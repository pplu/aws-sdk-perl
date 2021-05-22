
package Paws::S3Control::PutStorageLensConfigurationTagging;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has ConfigId => (is => 'ro', isa => 'Str', uri_name => 'storagelensid', traits => ['ParamInURI'], required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::StorageLensTag]', request_name => 'Tag', traits => ['NameInRequest'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutStorageLensConfigurationTagging');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/storagelens/{storagelensid}/tagging');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::PutStorageLensConfigurationTaggingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'PutStorageLensConfigurationTaggingRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://awss3control.amazonaws.com/doc/2018-08-20/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PutStorageLensConfigurationTagging - Arguments for method PutStorageLensConfigurationTagging on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutStorageLensConfigurationTagging on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method PutStorageLensConfigurationTagging.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutStorageLensConfigurationTagging.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $PutStorageLensConfigurationTaggingResult =
      $s3 -control->PutStorageLensConfigurationTagging(
      AccountId => 'MyAccountId',
      ConfigId  => 'MyConfigId',
      Tags      => [
        {
          Key   => 'MyTagKeyString',      # min: 1, max: 1024
          Value => 'MyTagValueString',    # max: 1024

        },
        ...
      ],

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/PutStorageLensConfigurationTagging>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The account ID of the requester.



=head2 B<REQUIRED> ConfigId => Str

The ID of the S3 Storage Lens configuration.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::S3Control::StorageLensTag>]

The tag set of the S3 Storage Lens configuration.

You can set up to a maximum of 50 tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutStorageLensConfigurationTagging in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

