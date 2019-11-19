
package Paws::IoT::GetPolicy;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has PolicyName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetPolicy');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/policies/{policyName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::GetPolicyResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PolicyName' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'PolicyName' => 1
                  },
  'ParamInURI' => {
                    'PolicyName' => 'policyName'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetPolicy - Arguments for method GetPolicy on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPolicy on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method GetPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPolicy.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $GetPolicyResponse = $iot->GetPolicy(
      PolicyName => 'MyPolicyName',

    );

    # Results:
    my $CreationDate     = $GetPolicyResponse->CreationDate;
    my $DefaultVersionId = $GetPolicyResponse->DefaultVersionId;
    my $GenerationId     = $GetPolicyResponse->GenerationId;
    my $LastModifiedDate = $GetPolicyResponse->LastModifiedDate;
    my $PolicyArn        = $GetPolicyResponse->PolicyArn;
    my $PolicyDocument   = $GetPolicyResponse->PolicyDocument;
    my $PolicyName       = $GetPolicyResponse->PolicyName;

    # Returns a L<Paws::IoT::GetPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/GetPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyName => Str

The name of the policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPolicy in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

