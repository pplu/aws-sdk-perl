package Paws::PerformanceInsights::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type PerformanceInsights_DataPoint, { class => 'Paws::PerformanceInsights::DataPoint' };
  class_type PerformanceInsights_DescribeDimensionKeysRequest, { class => 'Paws::PerformanceInsights::DescribeDimensionKeysRequest' };
  class_type PerformanceInsights_DescribeDimensionKeysResponse, { class => 'Paws::PerformanceInsights::DescribeDimensionKeysResponse' };
  class_type PerformanceInsights_DimensionGroup, { class => 'Paws::PerformanceInsights::DimensionGroup' };
  class_type PerformanceInsights_DimensionKeyDescription, { class => 'Paws::PerformanceInsights::DimensionKeyDescription' };
  class_type PerformanceInsights_DimensionMap, { class => 'Paws::PerformanceInsights::DimensionMap' };
  class_type PerformanceInsights_GetResourceMetricsRequest, { class => 'Paws::PerformanceInsights::GetResourceMetricsRequest' };
  class_type PerformanceInsights_GetResourceMetricsResponse, { class => 'Paws::PerformanceInsights::GetResourceMetricsResponse' };
  class_type PerformanceInsights_InternalServiceError, { class => 'Paws::PerformanceInsights::InternalServiceError' };
  class_type PerformanceInsights_InvalidArgumentException, { class => 'Paws::PerformanceInsights::InvalidArgumentException' };
  class_type PerformanceInsights_MetricKeyDataPoints, { class => 'Paws::PerformanceInsights::MetricKeyDataPoints' };
  class_type PerformanceInsights_MetricQuery, { class => 'Paws::PerformanceInsights::MetricQuery' };
  class_type PerformanceInsights_MetricQueryFilterMap, { class => 'Paws::PerformanceInsights::MetricQueryFilterMap' };
  class_type PerformanceInsights_NotAuthorizedException, { class => 'Paws::PerformanceInsights::NotAuthorizedException' };
  class_type PerformanceInsights_ResponsePartitionKey, { class => 'Paws::PerformanceInsights::ResponsePartitionKey' };
  class_type PerformanceInsights_ResponseResourceMetricKey, { class => 'Paws::PerformanceInsights::ResponseResourceMetricKey' };

1;
