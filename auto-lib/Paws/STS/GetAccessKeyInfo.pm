# Generated from callargs_class.tt

package Paws::STS::GetAccessKeyInfo;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::STS::Types qw//;
  has AccessKeyId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetAccessKeyInfo');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::STS::GetAccessKeyInfoResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'GetAccessKeyInfoResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'AccessKeyId' => 1
                  },
  'types' => {
               'AccessKeyId' => {
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

Paws::STS::GetAccessKeyInfo - Arguments for method GetAccessKeyInfo on L<Paws::STS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccessKeyInfo on the
L<AWS Security Token Service|Paws::STS> service. Use the attributes of this class
as arguments to method GetAccessKeyInfo.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccessKeyInfo.

=head1 SYNOPSIS

    my $sts = Paws->service('STS');
    my $GetAccessKeyInfoResponse = $sts->GetAccessKeyInfo(
      AccessKeyId => 'MyaccessKeyIdType',

    );

    # Results:
    my $Account = $GetAccessKeyInfoResponse->Account;

    # Returns a L<Paws::STS::GetAccessKeyInfoResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sts/GetAccessKeyInfo>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessKeyId => Str

The identifier of an access key.

This parameter allows (through its regex pattern) a string of
characters that can consist of any upper- or lowercased letter or
digit.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccessKeyInfo in L<Paws::STS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

