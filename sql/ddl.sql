BEGIN;
SET search_path TO public;

-- Hardware specs
CREATE TABLE IF NOT EXISTS public.host_info (
  id               SERIAL PRIMARY KEY,
  hostname         VARCHAR(255) NOT NULL UNIQUE,
  cpu_number       INT2         NOT NULL,
  cpu_architecture VARCHAR(64)  NOT NULL,
  cpu_model        TEXT         NOT NULL,
  cpu_mhz          NUMERIC(10,3) NOT NULL,  -- e.g. 2300.000
  l2_cache         INT4         NOT NULL,   -- kB
  total_mem        INT4         NOT NULL,   -- kB
  "timestamp"      TIMESTAMP    NOT NULL    -- UTC capture time
);

-- Usage time-series
CREATE TABLE IF NOT EXISTS public.host_usage (
  "timestamp"      TIMESTAMP NOT NULL,                   -- UTC
  host_id          INT       NOT NULL REFERENCES public.host_info(id) ON DELETE CASCADE,
  memory_free      INT4      NOT NULL,                   -- MB
  cpu_idle         INT2      NOT NULL,                   -- %
  cpu_kernel       INT2      NOT NULL,                   -- %
  disk_io          INT4      NOT NULL,                   -- in-progress ops
  disk_available   INT4      NOT NULL,                   -- MB
  PRIMARY KEY ("timestamp", host_id),
  CHECK (cpu_idle   BETWEEN 0 AND 100),
  CHECK (cpu_kernel BETWEEN 0 AND 100)
);

COMMIT;

-- Optional sample rows (comment out if you don't want seeds)
-- INSERT INTO host_info (hostname,cpu_number,cpu_architecture,cpu_model,cpu_mhz,l2_cache,total_mem,"timestamp") VALUES
-- ('jrvs-remote-desktop-centos7-6.us-central1-a.c.spry-framework-236416.internal',1,'x86_64','Intel(R) Xeon(R) CPU @ 2.30GHz',2300.000,256,601324,'2019-05-29 17:49:53'),
-- ('noe1',1,'x86_64','Intel(R) Xeon(R) CPU @ 2.30GHz',2300.000,256,601324,'2019-05-29 17:49:53'),
-- ('noe2',1,'x86_64','Intel(R) Xeon(R) CPU @ 2.30GHz',2300.000,256,601324,'2019-05-29 17:49:53');

-- After inserting at least one host_info row, example usage rows:
-- INSERT INTO host_usage ("timestamp",host_id,memory_free,cpu_idle,cpu_kernel,disk_io,disk_available)
-- VALUES ('2019-05-29 15:00:00', 1, 256, 90, 4, 2, 31220),
--        ('2019-05-29 15:01:00', 1, 255, 90, 4, 2, 31218);
