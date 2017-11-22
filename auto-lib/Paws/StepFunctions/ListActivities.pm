
package Paws::StepFunctions::ListActivities;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListActivities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::ListActivitiesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ListActivities - Arguments for method ListActivities on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListActivities on the 
AWS Step Functions service. Use the attributes of this class
as arguments to method ListActivities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListActivities.

As an example:

  $service_obj->ListActivities(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results that are returned per call. You can use
C<nextToken> to obtain further pages of results. The default is 100 and
the maximum allowed page size is 100. A value of 0 uses the default.

This is only an upper limit. The actual number of results returned per
call might be fewer than the specified maximum.



=head2 NextToken => Str

If a C<nextToken> is returned by a previous call, there are more
results available. To retrieve the next page of results, make the call
again using the returned token in C<nextToken>. Keep all other
arguments unchanged.

The configured C<maxResults> determines how many results can be
returned in a single call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListActivities in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

