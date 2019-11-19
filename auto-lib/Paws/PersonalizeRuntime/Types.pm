package Paws::PersonalizeRuntime::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type PersonalizeRuntime_GetPersonalizedRankingRequest, { class => 'Paws::PersonalizeRuntime::GetPersonalizedRankingRequest' };
  class_type PersonalizeRuntime_GetPersonalizedRankingResponse, { class => 'Paws::PersonalizeRuntime::GetPersonalizedRankingResponse' };
  class_type PersonalizeRuntime_GetRecommendationsRequest, { class => 'Paws::PersonalizeRuntime::GetRecommendationsRequest' };
  class_type PersonalizeRuntime_GetRecommendationsResponse, { class => 'Paws::PersonalizeRuntime::GetRecommendationsResponse' };
  class_type PersonalizeRuntime_InvalidInputException, { class => 'Paws::PersonalizeRuntime::InvalidInputException' };
  class_type PersonalizeRuntime_PredictedItem, { class => 'Paws::PersonalizeRuntime::PredictedItem' };
  class_type PersonalizeRuntime_ResourceNotFoundException, { class => 'Paws::PersonalizeRuntime::ResourceNotFoundException' };

1;
