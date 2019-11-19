# Generated from json/callargs_class.tt

package Paws::WorkSpaces::CopyWorkspaceImage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_Tag/;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SourceImageId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SourceRegion => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[WorkSpaces_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CopyWorkspaceImage');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkSpaces::CopyWorkspaceImageResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1,
                    'SourceImageId' => 1,
                    'SourceRegion' => 1
                  },
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[WorkSpaces_Tag]',
                           'class' => 'Paws::WorkSpaces::Tag'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'SourceRegion' => {
                                   'type' => 'Str'
                                 },
               'Name' => {
                           'type' => 'Str'
                         },
               'SourceImageId' => {
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

Paws::WorkSpaces::CopyWorkspaceImage - Arguments for method CopyWorkspaceImage on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyWorkspaceImage on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method CopyWorkspaceImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyWorkspaceImage.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $CopyWorkspaceImageResult = $workspaces->CopyWorkspaceImage(
      Name          => 'MyWorkspaceImageName',
      SourceImageId => 'MyWorkspaceImageId',
      SourceRegion  => 'MyRegion',
      Description   => 'MyWorkspaceImageDescription',    # OPTIONAL
      Tags          => [
        {
          Key   => 'MyTagKey',                           # min: 1, max: 127
          Value => 'MyTagValue',                         # max: 255; OPTIONAL
        },
        ...
      ],                                                 # OPTIONAL
    );

    # Results:
    my $ImageId = $CopyWorkspaceImageResult->ImageId;

    # Returns a L<Paws::WorkSpaces::CopyWorkspaceImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/CopyWorkspaceImage>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the image.



=head2 B<REQUIRED> Name => Str

The name of the image.



=head2 B<REQUIRED> SourceImageId => Str

The identifier of the source image.



=head2 B<REQUIRED> SourceRegion => Str

The identifier of the source Region.



=head2 Tags => ArrayRef[WorkSpaces_Tag]

The tags for the image.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyWorkspaceImage in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

