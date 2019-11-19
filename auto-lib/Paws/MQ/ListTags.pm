
package Paws::MQ::ListTags;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MQ::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTags');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/tags/{resource-arn}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MQ::ListTagsResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceArn' => 1
                  },
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInURI' => {
                    'ResourceArn' => 'resource-arn'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListTags - Arguments for method ListTags on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTags on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method ListTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTags.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $ListTagsResponse = $mq->ListTags(
      ResourceArn => 'My__string',

    );

    # Results:
    my $Tags = $ListTagsResponse->Tags;

    # Returns a L<Paws::MQ::ListTagsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/ListTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource tag.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTags in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

