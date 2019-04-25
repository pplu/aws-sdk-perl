
package Paws::MQ::CreateTags;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource-arn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MQ::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTags');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/tags/{resource-arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::CreateTags - Arguments for method CreateTags on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTags on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method CreateTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTags.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    $mq->CreateTags(
      ResourceArn => 'My__string',
      Tags        => { 'My__string' => 'My__string', },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/amazon-mq/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

the Amazon Resource Name (ARN)



=head2 Tags => L<Paws::MQ::__mapOf__string>

The key-value pair for the resource tag.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTags in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

