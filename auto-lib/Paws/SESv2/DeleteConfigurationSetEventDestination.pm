
package Paws::SESv2::DeleteConfigurationSetEventDestination;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SESv2::Types qw//;
  has ConfigurationSetName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EventDestinationName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteConfigurationSetEventDestination');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SESv2::DeleteConfigurationSetEventDestinationResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ConfigurationSetName' => 'ConfigurationSetName',
                    'EventDestinationName' => 'EventDestinationName'
                  },
  'IsRequired' => {
                    'ConfigurationSetName' => 1,
                    'EventDestinationName' => 1
                  },
  'types' => {
               'EventDestinationName' => {
                                           'type' => 'Str'
                                         },
               'ConfigurationSetName' => {
                                           'type' => 'Str'
                                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::DeleteConfigurationSetEventDestination - Arguments for method DeleteConfigurationSetEventDestination on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConfigurationSetEventDestination on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method DeleteConfigurationSetEventDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConfigurationSetEventDestination.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $DeleteConfigurationSetEventDestinationResponse =
      $email->DeleteConfigurationSetEventDestination(
      ConfigurationSetName => 'MyConfigurationSetName',
      EventDestinationName => 'MyEventDestinationName',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/DeleteConfigurationSetEventDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set that contains the event destination
that you want to delete.



=head2 B<REQUIRED> EventDestinationName => Str

The name of the event destination that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConfigurationSetEventDestination in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

