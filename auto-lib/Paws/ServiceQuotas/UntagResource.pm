
package Paws::ServiceQuotas::UntagResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceQuotas::UntagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::UntagResource - Arguments for method UntagResource on L<Paws::ServiceQuotas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Service Quotas|Paws::ServiceQuotas> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $servicequotas = Paws->service('ServiceQuotas');
    my $UntagResourceResponse = $servicequotas->UntagResource(
      ResourceARN => 'MyAmazonResourceName',
      TagKeys     => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicequotas/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Name (ARN) for the applied quota that you want to
untag. You can get this information by using the Service Quotas
console, or by listing the quotas using the list-service-quotas
(https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html)
AWS CLI command or the ListServiceQuotas
(https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html)
AWS API operation.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The keys of the tags that you want to remove from the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

