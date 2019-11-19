
package Paws::GuardDuty::DeletePublishingDestination;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw//;
  has DestinationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DetectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeletePublishingDestination');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/detector/{detectorId}/publishingDestination/{destinationId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GuardDuty::DeletePublishingDestinationResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'DetectorId' => 'detectorId',
                    'DestinationId' => 'destinationId'
                  },
  'IsRequired' => {
                    'DetectorId' => 1,
                    'DestinationId' => 1
                  },
  'types' => {
               'DetectorId' => {
                                 'type' => 'Str'
                               },
               'DestinationId' => {
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

Paws::GuardDuty::DeletePublishingDestination - Arguments for method DeletePublishingDestination on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePublishingDestination on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method DeletePublishingDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePublishingDestination.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $DeletePublishingDestinationResponse =
      $guardduty->DeletePublishingDestination(
      DestinationId => 'MyString',
      DetectorId    => 'MyDetectorId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/DeletePublishingDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationId => Str

The ID of the publishing destination to delete.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector associated with the publishing
destination to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePublishingDestination in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

