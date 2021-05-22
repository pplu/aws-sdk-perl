
package Paws::XRay::UpdateGroup;
  use Moose;
  has FilterExpression => (is => 'ro', isa => 'Str');
  has GroupARN => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has InsightsConfiguration => (is => 'ro', isa => 'Paws::XRay::InsightsConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateGroup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::UpdateGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::UpdateGroup - Arguments for method UpdateGroup on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGroup on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method UpdateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGroup.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $UpdateGroupResult = $xray->UpdateGroup(
      FilterExpression      => 'MyFilterExpression',    # OPTIONAL
      GroupARN              => 'MyGroupARN',            # OPTIONAL
      GroupName             => 'MyGroupName',           # OPTIONAL
      InsightsConfiguration => {
        InsightsEnabled      => 1,                      # OPTIONAL
        NotificationsEnabled => 1,                      # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Group = $UpdateGroupResult->Group;

    # Returns a L<Paws::XRay::UpdateGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/UpdateGroup>

=head1 ATTRIBUTES


=head2 FilterExpression => Str

The updated filter expression defining criteria by which to group
traces.



=head2 GroupARN => Str

The ARN that was generated upon creation.



=head2 GroupName => Str

The case-sensitive name of the group.



=head2 InsightsConfiguration => L<Paws::XRay::InsightsConfiguration>

The structure containing configurations related to insights.

=over

=item *

The InsightsEnabled boolean can be set to true to enable insights for
the group or false to disable insights for the group.

=item *

The NotifcationsEnabled boolean can be set to true to enable insights
notifications for the group. Notifications can only be enabled on a
group with InsightsEnabled set to true.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGroup in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

