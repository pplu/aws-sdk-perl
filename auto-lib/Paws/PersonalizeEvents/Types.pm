package Paws::PersonalizeEvents::Types;
  use Type::Library qw/-base/;
  use Type::Utils qw/class_type/;

  class_type PersonalizeEvents_Event, { class => 'Paws::PersonalizeEvents::Event' };
  class_type PersonalizeEvents_InvalidInputException, { class => 'Paws::PersonalizeEvents::InvalidInputException' };
  class_type PersonalizeEvents_PutEventsRequest, { class => 'Paws::PersonalizeEvents::PutEventsRequest' };

1;
