# Generated from callargs_class.tt

package Paws::CloudFormation::DetectStackSetDrift;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw/CloudFormation_StackSetOperationPreferences/;
  has OperationId => (is => 'ro', isa => Str, predicate => 1);
  has OperationPreferences => (is => 'ro', isa => CloudFormation_StackSetOperationPreferences, predicate => 1);
  has StackSetName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DetectStackSetDrift');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudFormation::DetectStackSetDriftOutput');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DetectStackSetDriftResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OperationPreferences' => {
                                           'type' => 'CloudFormation_StackSetOperationPreferences',
                                           'class' => 'Paws::CloudFormation::StackSetOperationPreferences'
                                         },
               'StackSetName' => {
                                   'type' => 'Str'
                                 },
               'OperationId' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'StackSetName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DetectStackSetDrift - Arguments for method DetectStackSetDrift on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectStackSetDrift on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DetectStackSetDrift.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectStackSetDrift.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DetectStackSetDriftOutput = $cloudformation->DetectStackSetDrift(
      StackSetName         => 'MyStackSetNameOrId',
      OperationId          => 'MyClientRequestToken',    # OPTIONAL
      OperationPreferences => {
        FailureToleranceCount      => 1,    # OPTIONAL
        FailureTolerancePercentage => 1,    # max: 100; OPTIONAL
        MaxConcurrentCount         => 1,    # min: 1; OPTIONAL
        MaxConcurrentPercentage    => 1,    # min: 1, max: 100; OPTIONAL
        RegionOrder => [ 'MyRegion', ... ], # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $OperationId = $DetectStackSetDriftOutput->OperationId;

    # Returns a L<Paws::CloudFormation::DetectStackSetDriftOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DetectStackSetDrift>

=head1 ATTRIBUTES


=head2 OperationId => Str

I<The ID of the stack set operation.>



=head2 OperationPreferences => CloudFormation_StackSetOperationPreferences





=head2 B<REQUIRED> StackSetName => Str

The name of the stack set on which to perform the drift detection
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectStackSetDrift in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

