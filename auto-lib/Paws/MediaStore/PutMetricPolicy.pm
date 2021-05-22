
package Paws::MediaStore::PutMetricPolicy;
  use Moose;
  has ContainerName => (is => 'ro', isa => 'Str', required => 1);
  has MetricPolicy => (is => 'ro', isa => 'Paws::MediaStore::MetricPolicy', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaStore::PutMetricPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::PutMetricPolicy - Arguments for method PutMetricPolicy on L<Paws::MediaStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMetricPolicy on the
L<AWS Elemental MediaStore|Paws::MediaStore> service. Use the attributes of this class
as arguments to method PutMetricPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMetricPolicy.

=head1 SYNOPSIS

    my $mediastore = Paws->service('MediaStore');
    my $PutMetricPolicyOutput = $mediastore->PutMetricPolicy(
      ContainerName => 'MyContainerName',
      MetricPolicy  => {
        ContainerLevelMetrics => 'ENABLED',    # values: ENABLED, DISABLED
        MetricPolicyRules     => [
          {
            ObjectGroup     => 'MyObjectGroup',        # min: 1, max: 900
            ObjectGroupName => 'MyObjectGroupName',    # min: 1, max: 30

          },
          ...
        ],    # min: 1, max: 300; OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediastore/PutMetricPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContainerName => Str

The name of the container that you want to add the metric policy to.



=head2 B<REQUIRED> MetricPolicy => L<Paws::MediaStore::MetricPolicy>

The metric policy that you want to associate with the container. In the
policy, you must indicate whether you want MediaStore to send
container-level metrics. You can also include up to five rules to
define groups of objects that you want MediaStore to send object-level
metrics for. If you include rules in the policy, construct each rule
with both of the following:

=over

=item *

An object group that defines which objects to include in the group. The
definition can be a path or a file name, but it can't have more than
900 characters. Valid characters are: a-z, A-Z, 0-9, _ (underscore), =
(equal), : (colon), . (period), - (hyphen), ~ (tilde), / (forward
slash), and * (asterisk). Wildcards (*) are acceptable.

=item *

An object group name that allows you to refer to the object group. The
name can't have more than 30 characters. Valid characters are: a-z,
A-Z, 0-9, and _ (underscore).

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMetricPolicy in L<Paws::MediaStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

