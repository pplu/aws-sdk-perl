
package Paws::EC2::DeleteTrafficMirrorFilterRule;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw//;
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has TrafficMirrorFilterRuleId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteTrafficMirrorFilterRule');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DeleteTrafficMirrorFilterRuleResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'TrafficMirrorFilterRuleId' => 1
                  },
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'TrafficMirrorFilterRuleId' => {
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

Paws::EC2::DeleteTrafficMirrorFilterRule - Arguments for method DeleteTrafficMirrorFilterRule on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTrafficMirrorFilterRule on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeleteTrafficMirrorFilterRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTrafficMirrorFilterRule.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DeleteTrafficMirrorFilterRuleResult =
      $ec2->DeleteTrafficMirrorFilterRule(
      TrafficMirrorFilterRuleId => 'MyTrafficMirrorFilterRuleId',
      DryRun                    => 1,                               # OPTIONAL
      );

    # Results:
    my $TrafficMirrorFilterRuleId =
      $DeleteTrafficMirrorFilterRuleResult->TrafficMirrorFilterRuleId;

    # Returns a L<Paws::EC2::DeleteTrafficMirrorFilterRuleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeleteTrafficMirrorFilterRule>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> TrafficMirrorFilterRuleId => Str

The ID of the Traffic Mirror rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTrafficMirrorFilterRule in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

