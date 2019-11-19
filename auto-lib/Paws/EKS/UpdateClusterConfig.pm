
package Paws::EKS::UpdateClusterConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EKS::Types qw/EKS_Logging EKS_VpcConfigRequest/;
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has Logging => (is => 'ro', isa => EKS_Logging, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ResourcesVpcConfig => (is => 'ro', isa => EKS_VpcConfigRequest, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateClusterConfig');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/clusters/{name}/update-config');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EKS::UpdateClusterConfigResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'ResourcesVpcConfig' => {
                                         'class' => 'Paws::EKS::VpcConfigRequest',
                                         'type' => 'EKS_VpcConfigRequest'
                                       },
               'Logging' => {
                              'type' => 'EKS_Logging',
                              'class' => 'Paws::EKS::Logging'
                            }
             },
  'NameInRequest' => {
                       'ClientRequestToken' => 'clientRequestToken',
                       'Logging' => 'logging',
                       'ResourcesVpcConfig' => 'resourcesVpcConfig'
                     },
  'IsRequired' => {
                    'Name' => 1
                  },
  'ParamInURI' => {
                    'Name' => 'name'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdateClusterConfig - Arguments for method UpdateClusterConfig on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateClusterConfig on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method UpdateClusterConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateClusterConfig.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $UpdateClusterConfigResponse = $eks->UpdateClusterConfig(
      Name               => 'MyString',
      ClientRequestToken => 'MyString',    # OPTIONAL
      Logging            => {
        ClusterLogging => [
          {
            Enabled => 1,                  # OPTIONAL
            Types   => [
              'api',
              ... # values: api, audit, authenticator, controllerManager, scheduler
            ],    # OPTIONAL
          },
          ...
        ],        # OPTIONAL
      },    # OPTIONAL
      ResourcesVpcConfig => {
        EndpointPrivateAccess => 1,                      # OPTIONAL
        EndpointPublicAccess  => 1,                      # OPTIONAL
        SecurityGroupIds      => [ 'MyString', ... ],    # OPTIONAL
        SubnetIds             => [ 'MyString', ... ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Update = $UpdateClusterConfigResponse->Update;

    # Returns a L<Paws::EKS::UpdateClusterConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/UpdateClusterConfig>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 Logging => EKS_Logging

Enable or disable exporting the Kubernetes control plane logs for your
cluster to CloudWatch Logs. By default, cluster control plane logs
aren't exported to CloudWatch Logs. For more information, see Amazon
EKS Cluster Control Plane Logs
(https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
in the I< I<Amazon EKS User Guide> >.

CloudWatch Logs ingestion, archive storage, and data scanning rates
apply to exported control plane logs. For more information, see Amazon
CloudWatch Pricing (http://aws.amazon.com/cloudwatch/pricing/).



=head2 B<REQUIRED> Name => Str

The name of the Amazon EKS cluster to update.



=head2 ResourcesVpcConfig => EKS_VpcConfigRequest






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateClusterConfig in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

