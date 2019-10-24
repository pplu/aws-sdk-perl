# Generated from json/callargs_class.tt

package Paws::WorkSpaces::CreateTags;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_Tag/;
  has ResourceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[WorkSpaces_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateTags');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkSpaces::CreateTagsResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'Tags' => {
                           'class' => 'Paws::WorkSpaces::Tag',
                           'type' => 'ArrayRef[WorkSpaces_Tag]'
                         }
             },
  'IsRequired' => {
                    'ResourceId' => 1,
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateTags - Arguments for method CreateTags on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTags on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method CreateTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTags.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $CreateTagsResult = $workspaces->CreateTags(
      ResourceId => 'MyNonEmptyString',
      Tags       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 127
          Value => 'MyTagValue',    # max: 255; OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/CreateTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The identifier of the WorkSpaces resource. The supported resource types
are WorkSpaces, registered directories, images, custom bundles, and IP
access control groups.



=head2 B<REQUIRED> Tags => ArrayRef[WorkSpaces_Tag]

The tags. Each WorkSpaces resource can have a maximum of 50 tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTags in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

