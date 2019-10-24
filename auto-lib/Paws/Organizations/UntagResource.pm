# Generated from json/callargs_class.tt

package Paws::Organizations::UntagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Organizations::Types qw//;
  has ResourceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagKeys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'TagKeys' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            }
             },
  'IsRequired' => {
                    'ResourceId' => 1,
                    'TagKeys' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::UntagResource - Arguments for method UntagResource on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    $organizations->UntagResource(
      ResourceId => 'MyTaggableResourceId',
      TagKeys    => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The ID of the resource to remove the tag from.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The tag to remove from the specified resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

