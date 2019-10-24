# Generated from json/callargs_class.tt

package Paws::Config::ListTagsForResource;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Config::Types qw//;
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Config::ListTagsForResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Limit' => {
                            'type' => 'Int'
                          }
             },
  'IsRequired' => {
                    'ResourceArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $ListTagsForResourceResponse = $config->ListTagsForResource(
      ResourceArn => 'MyAmazonResourceName',
      Limit       => 1,                        # OPTIONAL
      NextToken   => 'MyNextToken',            # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForResourceResponse->NextToken;
    my $Tags      = $ListTagsForResourceResponse->Tags;

    # Returns a L<Paws::Config::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/ListTagsForResource>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of tags returned on each page. The limit maximum is
50. You cannot specify a number greater than 50. If you specify 0, AWS
Config uses the default.



=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) that identifies the resource for which
to list the tags. Currently, the supported resources are C<ConfigRule>,
C<ConfigurationAggregator> and C<AggregatorAuthorization>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

