
package Paws::ApiGateway::UpdateDomainName;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_PatchOperation/;
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PatchOperations => (is => 'ro', isa => ArrayRef[ApiGateway_PatchOperation], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDomainName');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/domainnames/{domain_name}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGateway::DomainName');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PatchOperations' => {
                                      'class' => 'Paws::ApiGateway::PatchOperation',
                                      'type' => 'ArrayRef[ApiGateway_PatchOperation]'
                                    },
               'DomainName' => {
                                 'type' => 'Str'
                               }
             },
  'ParamInURI' => {
                    'DomainName' => 'domain_name'
                  },
  'NameInRequest' => {
                       'PatchOperations' => 'patchOperations'
                     },
  'IsRequired' => {
                    'DomainName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateDomainName - Arguments for method UpdateDomainName on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainName on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateDomainName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainName.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $DomainName = $apigateway->UpdateDomainName(
      DomainName      => 'MyString',
      PatchOperations => [
        {
          From => 'MyString',
          Op =>
            'add',    # values: add, remove, replace, move, copy, test; OPTIONAL
          Path  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],              # OPTIONAL
    );

    # Results:
    my $CertificateArn           = $DomainName->CertificateArn;
    my $CertificateName          = $DomainName->CertificateName;
    my $CertificateUploadDate    = $DomainName->CertificateUploadDate;
    my $DistributionDomainName   = $DomainName->DistributionDomainName;
    my $DistributionHostedZoneId = $DomainName->DistributionHostedZoneId;
    my $DomainName               = $DomainName->DomainName;
    my $DomainNameStatus         = $DomainName->DomainNameStatus;
    my $DomainNameStatusMessage  = $DomainName->DomainNameStatusMessage;
    my $EndpointConfiguration    = $DomainName->EndpointConfiguration;
    my $RegionalCertificateArn   = $DomainName->RegionalCertificateArn;
    my $RegionalCertificateName  = $DomainName->RegionalCertificateName;
    my $RegionalDomainName       = $DomainName->RegionalDomainName;
    my $RegionalHostedZoneId     = $DomainName->RegionalHostedZoneId;
    my $SecurityPolicy           = $DomainName->SecurityPolicy;
    my $Tags                     = $DomainName->Tags;

    # Returns a L<Paws::ApiGateway::DomainName> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateDomainName>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

[Required] The name of the DomainName resource to be changed.



=head2 PatchOperations => ArrayRef[ApiGateway_PatchOperation]

A list of update operations to be applied to the specified resource and
in the order specified in this list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainName in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

