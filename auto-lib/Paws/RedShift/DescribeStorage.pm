
package Paws::RedShift::DescribeStorage;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStorage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::CustomerStorageMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStorageResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeStorage - Arguments for method DescribeStorage on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStorage on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeStorage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStorage.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $CustomerStorageMessage = $redshift->DescribeStorage();

    # Results:
    my $TotalBackupSizeInMegaBytes =
      $CustomerStorageMessage->TotalBackupSizeInMegaBytes;
    my $TotalProvisionedStorageInMegaBytes =
      $CustomerStorageMessage->TotalProvisionedStorageInMegaBytes;

    # Returns a L<Paws::RedShift::CustomerStorageMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeStorage>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStorage in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

