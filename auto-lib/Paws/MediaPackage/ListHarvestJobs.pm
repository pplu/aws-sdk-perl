
package Paws::MediaPackage::ListHarvestJobs;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaPackage::Types qw//;
  has IncludeChannelId => (is => 'ro', isa => Str, predicate => 1);
  has IncludeStatus => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListHarvestJobs');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/harvest_jobs');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaPackage::ListHarvestJobsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IncludeChannelId' => {
                                       'type' => 'Str'
                                     },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'IncludeStatus' => {
                                    'type' => 'Str'
                                  }
             },
  'ParamInQuery' => {
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken',
                      'IncludeStatus' => 'includeStatus',
                      'IncludeChannelId' => 'includeChannelId'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::ListHarvestJobs - Arguments for method ListHarvestJobs on L<Paws::MediaPackage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHarvestJobs on the
L<AWS Elemental MediaPackage|Paws::MediaPackage> service. Use the attributes of this class
as arguments to method ListHarvestJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHarvestJobs.

=head1 SYNOPSIS

    my $mediapackage = Paws->service('MediaPackage');
    my $ListHarvestJobsResponse = $mediapackage->ListHarvestJobs(
      IncludeChannelId => 'My__string',    # OPTIONAL
      IncludeStatus    => 'My__string',    # OPTIONAL
      MaxResults       => 1,               # OPTIONAL
      NextToken        => 'My__string',    # OPTIONAL
    );

    # Results:
    my $HarvestJobs = $ListHarvestJobsResponse->HarvestJobs;
    my $NextToken   = $ListHarvestJobsResponse->NextToken;

    # Returns a L<Paws::MediaPackage::ListHarvestJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage/ListHarvestJobs>

=head1 ATTRIBUTES


=head2 IncludeChannelId => Str

When specified, the request will return only HarvestJobs associated
with the given Channel ID.



=head2 IncludeStatus => Str

When specified, the request will return only HarvestJobs in the given
status.



=head2 MaxResults => Int

The upper bound on the number of records to return.



=head2 NextToken => Str

A token used to resume pagination from the end of a previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHarvestJobs in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

