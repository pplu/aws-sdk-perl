
package Paws::Inspector::SetTagsForResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::SetTagsForResource - Arguments for method SetTagsForResource on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetTagsForResource on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method SetTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetTagsForResource.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    # Set tags for resource
    # Sets tags (key and value pairs) to the assessment template that is
    # specified by the ARN of the assessment template.
    $inspector->SetTagsForResource(
      {
        'ResourceArn' =>
'arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-7sbz2Kz0',
        'Tags' => [

          {
            'Key'   => 'Example',
            'Value' => 'example'
          }
        ]
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/SetTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the assessment template that you want to set tags to.



=head2 Tags => ArrayRef[L<Paws::Inspector::Tag>]

A collection of key and value pairs that you want to set to the
assessment template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetTagsForResource in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

