package Paws::ES::LogPublishingOptions;
  use Moo;
  with 'Paws::API::MapParser';

  use MooX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');
  use Types::Standard qw//;
  use Paws::ES::Types qw/ES_LogPublishingOption/;
  has ES_APPLICATION_LOGS => (is => 'ro', isa => ES_LogPublishingOption);
  has INDEX_SLOW_LOGS => (is => 'ro', isa => ES_LogPublishingOption);
  has SEARCH_SLOW_LOGS => (is => 'ro', isa => ES_LogPublishingOption);

  sub params_map {
    our $Params_map ||= {
                    types => {
                               'ES_APPLICATION_LOGS' => {
                                          type => 'ES_LogPublishingOption',                                          class => 'ES_LogPublishingOption',                                        },
                               'INDEX_SLOW_LOGS' => {
                                          type => 'ES_LogPublishingOption',                                          class => 'ES_LogPublishingOption',                                        },
                               'SEARCH_SLOW_LOGS' => {
                                          type => 'ES_LogPublishingOption',                                          class => 'ES_LogPublishingOption',                                        },
                             },
                  };
    return $Params_map;
  }

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


=head2 ES_APPLICATION_LOGS => 


=head2 INDEX_SLOW_LOGS => 


=head2 SEARCH_SLOW_LOGS => 



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

