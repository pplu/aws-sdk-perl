
package Paws::Discovery::DescribeTags;
  use Moose;
  has Filter => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::TagFilter]', traits => ['NameInRequest'], request_name => 'filter' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::DescribeTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeTags - Arguments for method DescribeTags on Paws::Discovery

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTags on the 
AWS Application Discovery Service service. Use the attributes of this class
as arguments to method DescribeTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTags.

As an example:

  $service_obj->DescribeTags(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Filter => ArrayRef[L<Paws::Discovery::TagFilter>]

You can filter the list using a key, value format. For example:

C<{"key": "serverType", "value": "webServer"}>

You can separate these items by using logical operators. Allowed
filters include tagkey, tagValue, and configid.



=head2 MaxResults => Int

The total number of items to return. The maximum value is 100.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTags in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

