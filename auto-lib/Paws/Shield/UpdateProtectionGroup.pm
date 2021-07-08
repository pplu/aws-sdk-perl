
package Paws::Shield::UpdateProtectionGroup;
  use Moose;
  has Aggregation => (is => 'ro', isa => 'Str', required => 1);
  has Members => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Pattern => (is => 'ro', isa => 'Str', required => 1);
  has ProtectionGroupId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProtectionGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::UpdateProtectionGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::UpdateProtectionGroup - Arguments for method UpdateProtectionGroup on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProtectionGroup on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method UpdateProtectionGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProtectionGroup.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $UpdateProtectionGroupResponse = $shield->UpdateProtectionGroup(
      Aggregation       => 'SUM',
      Pattern           => 'ALL',
      ProtectionGroupId => 'MyProtectionGroupId',
      Members           => [
        'MyResourceArn', ...    # min: 1, max: 2048
      ],    # OPTIONAL
      ResourceType => 'CLOUDFRONT_DISTRIBUTION',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/UpdateProtectionGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Aggregation => Str

Defines how AWS Shield combines resource data for the group in order to
detect, mitigate, and report events.

=over

=item *

Sum - Use the total traffic across the group. This is a good choice for
most cases. Examples include Elastic IP addresses for EC2 instances
that scale manually or automatically.

=item *

Mean - Use the average of the traffic across the group. This is a good
choice for resources that share traffic uniformly. Examples include
accelerators and load balancers.

=item *

Max - Use the highest traffic from each resource. This is useful for
resources that don't share traffic and for resources that share that
traffic in a non-uniform way. Examples include CloudFront distributions
and origin resources for CloudFront distributions.

=back


Valid values are: C<"SUM">, C<"MEAN">, C<"MAX">

=head2 Members => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the resources to include in the
protection group. You must set this when you set C<Pattern> to
C<ARBITRARY> and you must not set it for any other C<Pattern> setting.



=head2 B<REQUIRED> Pattern => Str

The criteria to use to choose the protected resources for inclusion in
the group. You can include all resources that have protections, provide
a list of resource Amazon Resource Names (ARNs), or include all
resources of a specified resource type.

Valid values are: C<"ALL">, C<"ARBITRARY">, C<"BY_RESOURCE_TYPE">

=head2 B<REQUIRED> ProtectionGroupId => Str

The name of the protection group. You use this to identify the
protection group in lists and to manage the protection group, for
example to update, delete, or describe it.



=head2 ResourceType => Str

The resource type to include in the protection group. All protected
resources of this type are included in the protection group. You must
set this when you set C<Pattern> to C<BY_RESOURCE_TYPE> and you must
not set it for any other C<Pattern> setting.

Valid values are: C<"CLOUDFRONT_DISTRIBUTION">, C<"ROUTE_53_HOSTED_ZONE">, C<"ELASTIC_IP_ALLOCATION">, C<"CLASSIC_LOAD_BALANCER">, C<"APPLICATION_LOAD_BALANCER">, C<"GLOBAL_ACCELERATOR">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProtectionGroup in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

