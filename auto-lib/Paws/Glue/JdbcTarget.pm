package Paws::Glue::JdbcTarget;
  use Moose;
  has ConnectionName => (is => 'ro', isa => 'Str');
  has Exclusions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Path => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::JdbcTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::JdbcTarget object:

  $service_obj->Method(Att1 => { ConnectionName => $value, ..., Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::JdbcTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionName

=head1 DESCRIPTION

Specifies a JDBC data store to crawl.

=head1 ATTRIBUTES


=head2 ConnectionName => Str

  The name of the connection to use to connect to the JDBC target.


=head2 Exclusions => ArrayRef[Str|Undef]

  A list of glob patterns used to exclude from the crawl. For more
information, see Catalog Tables with a Crawler
(http://docs.aws.amazon.com/glue/latest/dg/add-crawler.html).


=head2 Path => Str

  The path of the JDBC target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

