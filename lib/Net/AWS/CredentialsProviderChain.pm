package Net::AWS::CredentialsProviderChain {
	use Moose::Role;

	# Those will be checked in the order they are defined
	my $providers = (
		'Net::AWS::EnvCredentials',
		'Net::AWS::InstanceProfileCredentials',
	);


}
