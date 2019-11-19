
package Paws::CloudDirectory::ListObjectParentPaths;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectReference/;
  has DirectoryArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ObjectReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListObjectParentPaths');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/amazonclouddirectory/2017-01-11/object/parentpaths');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudDirectory::ListObjectParentPathsResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ObjectReference' => 1,
                    'DirectoryArn' => 1
                  },
  'types' => {
               'ObjectReference' => {
                                      'class' => 'Paws::CloudDirectory::ObjectReference',
                                      'type' => 'CloudDirectory_ObjectReference'
                                    },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'DirectoryArn' => {
                                   'type' => 'Str'
                                 }
             },
  'ParamInHeader' => {
                       'DirectoryArn' => 'x-amz-data-partition'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListObjectParentPaths - Arguments for method ListObjectParentPaths on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListObjectParentPaths on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method ListObjectParentPaths.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListObjectParentPaths.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $ListObjectParentPathsResponse = $clouddirectory->ListObjectParentPaths(
      DirectoryArn    => 'MyArn',
      ObjectReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },
      MaxResults => 1,                              # OPTIONAL
      NextToken  => 'MyNextToken',                  # OPTIONAL
    );

    # Results:
    my $NextToken = $ListObjectParentPathsResponse->NextToken;
    my $PathToObjectIdentifiersList =
      $ListObjectParentPathsResponse->PathToObjectIdentifiersList;

    # Returns a L<Paws::CloudDirectory::ListObjectParentPathsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/ListObjectParentPaths>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The ARN of the directory to which the parent path applies.



=head2 MaxResults => Int

The maximum number of items to be retrieved in a single call. This is
an approximate number.



=head2 NextToken => Str

The pagination token.



=head2 B<REQUIRED> ObjectReference => CloudDirectory_ObjectReference

The reference that identifies the object whose parent paths are listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListObjectParentPaths in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

