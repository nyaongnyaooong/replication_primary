-- 복제 권한을 가진 사용자 생성
CREATE ROLE replicator WITH REPLICATION LOGIN PASSWORD 'replicator_pw';

-- 복제 슬롯 생성
-- SELECT pg_create_physical_replication_slot('replica_slot');