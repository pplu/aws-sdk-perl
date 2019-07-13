package Paws::ES::LogPublishingOptions;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has ES_APPLICATION_LOGS => (is => 'ro', isa => 'Paws::ES::LogPublishingOption');
  has INDEX_SLOW_LOGS => (is => 'ro', isa => 'Paws::ES::LogPublishingOption');
  has SEARCH_SLOW_LOGS => (is => 'ro', isa => 'Paws::ES::LogPublishingOption');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::LogPublishingOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::LogPublishingOptions object:

  $service_obj->Method(Att1 => { ES_APPLICATION_LOGS => $value, ..., SEARCH_SLOW_LOGS => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::LogPublishingOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->ES_APPLICATION_LOGS

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ES_APPLICATION_LOGS => L<Paws::ES::LogPublishingOption>


=head2 INDEX_SLOW_LOGS => L<Paws::ES::LogPublishingOption>


=head2 SEARCH_SLOW_LOGS => L<Paws::ES::LogPublishingOption>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

