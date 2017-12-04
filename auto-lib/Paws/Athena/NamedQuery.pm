package Paws::Athena::NamedQuery;
  use Moose;
  has Database => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NamedQueryId => (is => 'ro', isa => 'Str');
  has QueryString => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::NamedQuery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::NamedQuery object:

  $service_obj->Method(Att1 => { Database => $value, ..., QueryString => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::NamedQuery object:

  $result = $service_obj->Method(...);
  $result->Att1->Database

=head1 DESCRIPTION

A query, where C<QueryString> is the SQL query statements that comprise
the query.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Database => Str

  The database to which the query belongs.


=head2 Description => Str

  A brief description of the query.


=head2 B<REQUIRED> Name => Str

  The plain-language name of the query.


=head2 NamedQueryId => Str

  The unique identifier of the query.


=head2 B<REQUIRED> QueryString => Str

  The SQL query statements that comprise the query.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

