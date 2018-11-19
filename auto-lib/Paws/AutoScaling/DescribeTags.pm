
package Paws::AutoScaling::DescribeTags;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Filter]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::TagsType');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTagsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeTags - Arguments for method DescribeTags on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTags on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DescribeTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTags.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To describe tags
    # This example describes the tags for the specified Auto Scaling group.
    my $TagsType = $autoscaling->DescribeTags(
      {
        'Filters' => [

          {
            'Name'   => 'auto-scaling-group',
            'Values' => ['my-auto-scaling-group']
          }
        ]
      }
    );

    # Results:
    my $Tags = $TagsType->Tags;

    # Returns a L<Paws::AutoScaling::TagsType> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeTags>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::AutoScaling::Filter>]

One or more filters to scope the tags to return. The maximum number of
filters per filter type (for example, C<auto-scaling-group>) is 1000.



=head2 MaxRecords => Int

The maximum number of items to return with this call. The default value
is 50 and the maximum value is 100.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTags in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

