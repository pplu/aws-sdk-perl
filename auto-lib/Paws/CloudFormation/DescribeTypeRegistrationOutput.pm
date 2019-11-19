# Generated from callresult_class.tt

package Paws::CloudFormation::DescribeTypeRegistrationOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw//;
  has Description => (is => 'ro', isa => Str);
  has ProgressStatus => (is => 'ro', isa => Str);
  has TypeArn => (is => 'ro', isa => Str);
  has TypeVersionArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TypeVersionArn' => {
                                     'type' => 'Str'
                                   },
               'TypeArn' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProgressStatus' => {
                                     'type' => 'Str'
                                   },
               'Description' => {
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

Paws::CloudFormation::DescribeTypeRegistrationOutput

=head1 ATTRIBUTES


=head2 Description => Str

The description of the type registration request.


=head2 ProgressStatus => Str

The current status of the type registration request.

Valid values are: C<"COMPLETE">, C<"IN_PROGRESS">, C<"FAILED">
=head2 TypeArn => Str

The Amazon Resource Name (ARN) of the type being registered.

For registration requests with a C<ProgressStatus> of other than
C<COMPLETE>, this will be C<null>.


=head2 TypeVersionArn => Str

The Amazon Resource Name (ARN) of this specific version of the type
being registered.

For registration requests with a C<ProgressStatus> of other than
C<COMPLETE>, this will be C<null>.


=head2 _request_id => Str


=cut

