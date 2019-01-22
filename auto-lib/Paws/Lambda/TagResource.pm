
package Paws::Lambda::TagResource;
  use Moose;
  has Resource => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ARN', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Lambda::Tags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-03-31/tags/{ARN}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::TagResource - Arguments for method TagResource on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    $lambda->TagResource(
      Resource => 'MyFunctionArn',
      Tags     => { 'MyTagKey' => 'MyTagValue', },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Resource => Str

The function's Amazon Resource Name (ARN).



=head2 B<REQUIRED> Tags => L<Paws::Lambda::Tags>

A list of tags to apply to the function.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

