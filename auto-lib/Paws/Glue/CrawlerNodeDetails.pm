# Generated from default/object.tt
package Paws::Glue::CrawlerNodeDetails;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Glue::Types qw/Glue_Crawl/;
  has Crawls => (is => 'ro', isa => ArrayRef[Glue_Crawl]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Crawls' => {
                             'class' => 'Paws::Glue::Crawl',
                             'type' => 'ArrayRef[Glue_Crawl]'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CrawlerNodeDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::CrawlerNodeDetails object:

  $service_obj->Method(Att1 => { Crawls => $value, ..., Crawls => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::CrawlerNodeDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Crawls

=head1 DESCRIPTION

The details of a Crawler node present in the workflow.

=head1 ATTRIBUTES


=head2 Crawls => ArrayRef[Glue_Crawl]

  A list of crawls represented by the crawl node.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

