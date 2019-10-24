# Generated from json/callargs_class.tt

package Paws::CloudWatchEvents::ListTagsForResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchEvents::Types qw//;
  has ResourceARN => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudWatchEvents::ListTagsForResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceARN' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ResourceARN' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon CloudWatch Events|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $ListTagsForResourceResponse = $events->ListTagsForResource(
      ResourceARN => 'MyArn',

    );

    # Results:
    my $Tags = $ListTagsForResourceResponse->Tags;

    # Returns a L<Paws::CloudWatchEvents::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The ARN of the CloudWatch Events rule for which you want to view tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

