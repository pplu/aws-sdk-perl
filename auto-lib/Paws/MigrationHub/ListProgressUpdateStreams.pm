
package Paws::MigrationHub::ListProgressUpdateStreams;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProgressUpdateStreams');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHub::ListProgressUpdateStreamsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::ListProgressUpdateStreams - Arguments for method ListProgressUpdateStreams on Paws::MigrationHub

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProgressUpdateStreams on the 
AWS Migration Hub service. Use the attributes of this class
as arguments to method ListProgressUpdateStreams.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProgressUpdateStreams.

As an example:

  $service_obj->ListProgressUpdateStreams(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

Filter to limit the maximum number of results to list per page.



=head2 NextToken => Str

If a C<NextToken> was returned by a previous call, there are more
results available. To retrieve the next page of results, make the call
again using the returned token in C<NextToken>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProgressUpdateStreams in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

