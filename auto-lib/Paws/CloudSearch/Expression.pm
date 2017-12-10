package Paws::CloudSearch::Expression;
  use Moose;
  has ExpressionName => (is => 'ro', isa => 'Str', required => 1);
  has ExpressionValue => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::Expression

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearch::Expression object:

  $service_obj->Method(Att1 => { ExpressionName => $value, ..., ExpressionValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearch::Expression object:

  $result = $service_obj->Method(...);
  $result->Att1->ExpressionName

=head1 DESCRIPTION

A named expression that can be evaluated at search time. Can be used to
sort the search results, define other expressions, or return computed
information in the search results.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExpressionName => Str

  


=head2 B<REQUIRED> ExpressionValue => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

