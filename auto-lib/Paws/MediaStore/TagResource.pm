# Generated from json/callargs_class.tt

package Paws::MediaStore::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaStore::Types qw/MediaStore_Tag/;
  has Resource => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[MediaStore_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaStore::TagResourceOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Tags' => 1,
                    'Resource' => 1
                  },
  'types' => {
               'Resource' => {
                               'type' => 'Str'
                             },
               'Tags' => {
                           'class' => 'Paws::MediaStore::Tag',
                           'type' => 'ArrayRef[MediaStore_Tag]'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::TagResource - Arguments for method TagResource on L<Paws::MediaStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Elemental MediaStore|Paws::MediaStore> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $mediastore = Paws->service('MediaStore');
    my $TagResourceOutput = $mediastore->TagResource(
      Resource => 'MyContainerARN',
      Tags     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediastore/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Resource => Str

The Amazon Resource Name (ARN) for the container.



=head2 B<REQUIRED> Tags => ArrayRef[MediaStore_Tag]

An array of key:value pairs that you want to add to the container. You
need to specify only the tags that you want to add or update. For
example, suppose a container already has two tags (customer:CompanyA
and priority:High). You want to change the priority tag and also add a
third tag (type:Contract). For TagResource, you specify the following
tags: priority:Medium, type:Contract. The result is that your container
has three tags: customer:CompanyA, priority:Medium, and type:Contract.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::MediaStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

