package Paws::ForecastQuery::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type ForecastQuery_DataPoint, { class => 'Paws::ForecastQuery::DataPoint' };
  class_type ForecastQuery_Filters, { class => 'Paws::ForecastQuery::Filters' };
  class_type ForecastQuery_Forecast, { class => 'Paws::ForecastQuery::Forecast' };
  class_type ForecastQuery_InvalidInputException, { class => 'Paws::ForecastQuery::InvalidInputException' };
  class_type ForecastQuery_InvalidNextTokenException, { class => 'Paws::ForecastQuery::InvalidNextTokenException' };
  class_type ForecastQuery_LimitExceededException, { class => 'Paws::ForecastQuery::LimitExceededException' };
  class_type ForecastQuery_Predictions, { class => 'Paws::ForecastQuery::Predictions' };
  class_type ForecastQuery_QueryForecastRequest, { class => 'Paws::ForecastQuery::QueryForecastRequest' };
  class_type ForecastQuery_QueryForecastResponse, { class => 'Paws::ForecastQuery::QueryForecastResponse' };
  class_type ForecastQuery_ResourceInUseException, { class => 'Paws::ForecastQuery::ResourceInUseException' };
  class_type ForecastQuery_ResourceNotFoundException, { class => 'Paws::ForecastQuery::ResourceNotFoundException' };

1;
