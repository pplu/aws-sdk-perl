
package Paws::S3Control::UpdateJobStatus;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3Control::Types qw//;
  has AccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has JobId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RequestedJobStatus => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StatusUpdateReason => (is => 'ro', isa => Str, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateJobStatus');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v20180820/jobs/{id}/status');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::S3Control::UpdateJobStatusResult');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'AccountId' => 1,
                    'RequestedJobStatus' => 1,
                    'JobId' => 1
                  },
  'ParamInQuery' => {
                      'RequestedJobStatus' => 'requestedJobStatus',
                      'StatusUpdateReason' => 'statusUpdateReason'
                    },
  'types' => {
               'JobId' => {
                            'type' => 'Str'
                          },
               'AccountId' => {
                                'type' => 'Str'
                              },
               'RequestedJobStatus' => {
                                         'type' => 'Str'
                                       },
               'StatusUpdateReason' => {
                                         'type' => 'Str'
                                       }
             },
  'ParamInURI' => {
                    'JobId' => 'id'
                  },
  'ParamInHeader' => {
                       'AccountId' => 'x-amz-account-id'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::UpdateJobStatus - Arguments for method UpdateJobStatus on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJobStatus on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method UpdateJobStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJobStatus.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $UpdateJobStatusResult = $s3 -control->UpdateJobStatus(
      AccountId          => 'MyAccountId',
      JobId              => 'MyJobId',
      RequestedJobStatus => 'Cancelled',
      StatusUpdateReason => 'MyJobStatusUpdateReason',    # OPTIONAL
    );

    # Results:
    my $JobId              = $UpdateJobStatusResult->JobId;
    my $Status             = $UpdateJobStatusResult->Status;
    my $StatusUpdateReason = $UpdateJobStatusResult->StatusUpdateReason;

    # Returns a L<Paws::S3Control::UpdateJobStatusResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/UpdateJobStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str





=head2 B<REQUIRED> JobId => Str

The ID of the job whose status you want to update.



=head2 B<REQUIRED> RequestedJobStatus => Str

The status that you want to move the specified job to.

Valid values are: C<"Cancelled">, C<"Ready">

=head2 StatusUpdateReason => Str

A description of the reason why you want to change the specified job's
status. This field can be any string up to the maximum length.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJobStatus in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

