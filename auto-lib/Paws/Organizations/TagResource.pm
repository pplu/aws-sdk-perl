# Generated from json/callargs_class.tt

package Paws::Organizations::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Organizations::Types qw/Organizations_Tag/;
  has ResourceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[Organizations_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceId' => 1,
                    'Tags' => 1
                  },
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[Organizations_Tag]',
                           'class' => 'Paws::Organizations::Tag'
                         },
               'ResourceId' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::TagResource - Arguments for method TagResource on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    $organizations->TagResource(
      ResourceId => 'MyTaggableResourceId',
      Tags       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The ID of the resource to add a tag to.



=head2 B<REQUIRED> Tags => ArrayRef[Organizations_Tag]

The tag to add to the specified resource. Specifying the tag key is
required. You can set the value of a tag to an empty string, but you
can't set the value of a tag to null.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

