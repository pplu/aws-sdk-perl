package Paws::Schemas::SearchSchemasOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Schemas => (is => 'ro', isa => 'ArrayRef[Paws::Schemas::SearchSchemaSummary]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::SearchSchemasOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Schemas::SearchSchemasOutput object:

  $service_obj->Method(Att1 => { NextToken => $value, ..., Schemas => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Schemas::SearchSchemasOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->NextToken

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 NextToken => Str

  The token that specifies the next page of results to return. To request
the first page, leave NextToken empty. The token will expire in 24
hours, and cannot be shared with other accounts.


=head2 Schemas => ArrayRef[L<Paws::Schemas::SearchSchemaSummary>]

  An array of SearchSchemaSummary information.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

