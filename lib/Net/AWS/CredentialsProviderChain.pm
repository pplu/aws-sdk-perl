package Net::AWS::CredentialsProviderChain {
	use Moose::Role;

    # Those will be checked in the order they are defined
	my @providers = (
		'Net::AWS::EnvCredentials',
		'Net::AWS::InstanceProfileCredentials',
	);

	sub resolve {
		foreach my $prov (@providers) {
			use $prov;
			my $creds = $prov->new;
			return $creds if ($creds->are_set);
		}

		#XXX What if couldn't resolve none?
	}

}
