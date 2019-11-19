# Generated from json/callargs_class.tt

package Paws::ComprehendMedical::StopEntitiesDetectionV2Job;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ComprehendMedical::Types qw//;
  has JobId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StopEntitiesDetectionV2Job');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ComprehendMedical::StopEntitiesDetectionV2JobResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'JobId' => 1
                  },
  'types' => {
               'JobId' => {
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

Paws::ComprehendMedical::StopEntitiesDetectionV2Job - Arguments for method StopEntitiesDetectionV2Job on L<Paws::ComprehendMedical>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopEntitiesDetectionV2Job on the
L<AWS Comprehend Medical|Paws::ComprehendMedical> service. Use the attributes of this class
as arguments to method StopEntitiesDetectionV2Job.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopEntitiesDetectionV2Job.

=head1 SYNOPSIS

    my $comprehendmedical = Paws->service('ComprehendMedical');
    my $StopEntitiesDetectionV2JobResponse =
      $comprehendmedical->StopEntitiesDetectionV2Job(
      JobId => 'MyJobId',

      );

    # Results:
    my $JobId = $StopEntitiesDetectionV2JobResponse->JobId;

# Returns a L<Paws::ComprehendMedical::StopEntitiesDetectionV2JobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehendmedical/StopEntitiesDetectionV2Job>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The identifier of the medical entities job to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopEntitiesDetectionV2Job in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

