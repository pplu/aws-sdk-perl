
package Paws::Quicksight::DeleteFolder;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has FolderId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FolderId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFolder');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/folders/{FolderId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DeleteFolderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DeleteFolder - Arguments for method DeleteFolder on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFolder on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DeleteFolder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFolder.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DeleteFolderResponse = $quicksight->DeleteFolder(
      AwsAccountId => 'MyAwsAccountId',
      FolderId     => 'MyRestrictiveResourceId',

    );

    # Results:
    my $Arn       = $DeleteFolderResponse->Arn;
    my $FolderId  = $DeleteFolderResponse->FolderId;
    my $RequestId = $DeleteFolderResponse->RequestId;
    my $Status    = $DeleteFolderResponse->Status;

    # Returns a L<Paws::Quicksight::DeleteFolderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DeleteFolder>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS Account ID for the folder.



=head2 B<REQUIRED> FolderId => Str

The folder ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFolder in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

