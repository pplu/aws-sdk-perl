package Paws::Athena::UnprocessedNamedQueryId;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has NamedQueryId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::UnprocessedNamedQueryId

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::UnprocessedNamedQueryId object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., NamedQueryId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::UnprocessedNamedQueryId object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Information about a named query ID that could not be processed.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code returned when the processing request for the named query
failed, if applicable.


=head2 ErrorMessage => Str

  The error message returned when the processing request for the named
query failed, if applicable.


=head2 NamedQueryId => Str

  The unique identifier of the named query.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

