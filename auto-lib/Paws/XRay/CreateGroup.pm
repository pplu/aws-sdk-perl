
package Paws::XRay::CreateGroup;
  use Moose;
  has FilterExpression => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has InsightsConfiguration => (is => 'ro', isa => 'Paws::XRay::InsightsConfiguration');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::XRay::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateGroup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::CreateGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::CreateGroup - Arguments for method CreateGroup on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGroup on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method CreateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGroup.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $CreateGroupResult = $xray->CreateGroup(
      GroupName             => 'MyGroupName',
      FilterExpression      => 'MyFilterExpression',    # OPTIONAL
      InsightsConfiguration => {
        InsightsEnabled      => 1,                      # OPTIONAL
        NotificationsEnabled => 1,                      # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Group = $CreateGroupResult->Group;

    # Returns a L<Paws::XRay::CreateGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/CreateGroup>

=head1 ATTRIBUTES


=head2 FilterExpression => Str

The filter expression defining criteria by which to group traces.



=head2 B<REQUIRED> GroupName => Str

The case-sensitive name of the new group. Default is a reserved name
and names must be unique.



=head2 InsightsConfiguration => L<Paws::XRay::InsightsConfiguration>

The structure containing configurations related to insights.

=over

=item *

The InsightsEnabled boolean can be set to true to enable insights for
the new group or false to disable insights for the new group.

=item *

The NotifcationsEnabled boolean can be set to true to enable insights
notifications for the new group. Notifications may only be enabled on a
group with InsightsEnabled set to true.

=back




=head2 Tags => ArrayRef[L<Paws::XRay::Tag>]

A map that contains one or more tag keys and tag values to attach to an
X-Ray group. For more information about ways to use tags, see Tagging
AWS resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<AWS General Reference>.

The following restrictions apply to tags:

=over

=item *

Maximum number of user-applied tags per resource: 50

=item *

Maximum tag key length: 128 Unicode characters

=item *

Maximum tag value length: 256 Unicode characters

=item *

Valid values for key and value: a-z, A-Z, 0-9, space, and the following
characters: _ . : / = + - and @

=item *

Tag keys and values are case sensitive.

=item *

Don't use C<aws:> as a prefix for keys; it's reserved for AWS use.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGroup in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

