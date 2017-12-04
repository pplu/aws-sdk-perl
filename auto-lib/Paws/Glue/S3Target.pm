package Paws::Glue::S3Target;
  use Moose;
  has Exclusions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Path => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::S3Target

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::S3Target object:

  $service_obj->Method(Att1 => { Exclusions => $value, ..., Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::S3Target object:

  $result = $service_obj->Method(...);
  $result->Att1->Exclusions

=head1 DESCRIPTION

Specifies a data store in Amazon S3.

=head1 ATTRIBUTES


=head2 Exclusions => ArrayRef[Str|Undef]

  A list of glob patterns used to exclude from the crawl. For more
information, see Catalog Tables with a Crawler
(http://docs.aws.amazon.com/glue/latest/dg/add-crawler.html).


=head2 Path => Str

  The path to the Amazon S3 target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

