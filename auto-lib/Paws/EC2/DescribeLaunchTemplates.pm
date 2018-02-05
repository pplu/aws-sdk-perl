
package Paws::EC2::DescribeLaunchTemplates;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has LaunchTemplateIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'LaunchTemplateId' );
  has LaunchTemplateNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'LaunchTemplateName' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLaunchTemplates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeLaunchTemplatesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeLaunchTemplates - Arguments for method DescribeLaunchTemplates on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLaunchTemplates on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeLaunchTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLaunchTemplates.

As an example:

  $service_obj->DescribeLaunchTemplates(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<create-time> - The time the launch template was created.

=item *

C<launch-template-name> - The name of the launch template.

=item *

C<tag>:I<key>=I<value> - The key/value combination of a tag assigned to
the resource. Specify the key of the tag in the filter name and the
value of the tag in the filter value. For example, for the tag
Purpose=X, specify C<tag:Purpose> for the filter name and C<X> for the
filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. This filter is
independent of the C<tag-value> filter. For example, if you use both
the filter "tag-key=Purpose" and the filter "tag-value=X", you get any
resources assigned both the tag key Purpose (regardless of what the
tag's value is), and the tag value X (regardless of the tag's key). If
you want to list only resources where Purpose is X, see the
C<tag>:I<key>=I<value> filter.

=back




=head2 LaunchTemplateIds => ArrayRef[Str|Undef]

One or more launch template IDs.



=head2 LaunchTemplateNames => ArrayRef[Str|Undef]

One or more launch template names.



=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned C<NextToken>
value. This value can be between 5 and 1000.



=head2 NextToken => Str

The token to request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLaunchTemplates in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

