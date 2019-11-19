# Generated from json/callargs_class.tt

package Paws::Glue::BatchGetCrawlers;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::Glue::Types qw//;
  has CrawlerNames => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'BatchGetCrawlers');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::BatchGetCrawlersResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'CrawlerNames' => 1
                  },
  'types' => {
               'CrawlerNames' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetCrawlers - Arguments for method BatchGetCrawlers on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetCrawlers on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method BatchGetCrawlers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetCrawlers.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $BatchGetCrawlersResponse = $glue->BatchGetCrawlers(
      CrawlerNames => [
        'MyNameString', ...    # min: 1, max: 255
      ],

    );

    # Results:
    my $Crawlers         = $BatchGetCrawlersResponse->Crawlers;
    my $CrawlersNotFound = $BatchGetCrawlersResponse->CrawlersNotFound;

    # Returns a L<Paws::Glue::BatchGetCrawlersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/BatchGetCrawlers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CrawlerNames => ArrayRef[Str|Undef]

A list of crawler names, which might be the names returned from the
C<ListCrawlers> operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetCrawlers in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

