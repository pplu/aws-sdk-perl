# Generated from json/callargs_class.tt

package Paws::DAX::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DAX::Types qw/DAX_Tag/;
  has ResourceName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[DAX_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DAX::TagResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[DAX_Tag]',
                           'class' => 'Paws::DAX::Tag'
                         },
               'ResourceName' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'ResourceName' => 1,
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::TagResource - Arguments for method TagResource on L<Paws::DAX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon DynamoDB Accelerator (DAX)|Paws::DAX> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $dax = Paws->service('DAX');
    my $TagResourceResponse = $dax->TagResource(
      ResourceName => 'MyString',
      Tags         => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],

    );

    # Results:
    my $Tags = $TagResourceResponse->Tags;

    # Returns a L<Paws::DAX::TagResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dax/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceName => Str

The name of the DAX resource to which tags should be added.



=head2 B<REQUIRED> Tags => ArrayRef[DAX_Tag]

The tags to be assigned to the DAX resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

