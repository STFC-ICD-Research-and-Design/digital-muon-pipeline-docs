# Message passing

The online data pipeline uses a data broker as the central storage for active data.
In this case the broker is [Redpanda](https://www.redpanda.com/), an [Apache Kafka](https://kafka.apache.org/) compatible message broker.

Data transported in the online data pipeline is encoded using [flatbuffers](https://flatbuffers.dev/).
Where possible, the same schemas as [used by the ESS](https://github.com/ess-dmsc/streaming-data-types) have been used, otherwise pipeline specific ones have been created.

The single source of truth for schemas used in the pipeline is [here in the repository](https://github.com/STFC-ICD-Research-and-Design/supermusr-data-pipeline/tree/main/schemas).
