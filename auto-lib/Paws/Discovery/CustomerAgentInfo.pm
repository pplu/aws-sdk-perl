# Generated from default/object.tt
package Paws::Discovery::CustomerAgentInfo;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::Discovery::Types qw//;
  has ActiveAgents => (is => 'ro', isa => Int, required => 1);
  has BlackListedAgents => (is => 'ro', isa => Int, required => 1);
  has HealthyAgents => (is => 'ro', isa => Int, required => 1);
  has ShutdownAgents => (is => 'ro', isa => Int, required => 1);
  has TotalAgents => (is => 'ro', isa => Int, required => 1);
  has UnhealthyAgents => (is => 'ro', isa => Int, required => 1);
  has UnknownAgents => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BlackListedAgents' => {
                                        'type' => 'Int'
                                      },
               'TotalAgents' => {
                                  'type' => 'Int'
                                },
               'HealthyAgents' => {
                                    'type' => 'Int'
                                  },
               'UnhealthyAgents' => {
                                      'type' => 'Int'
                                    },
               'ActiveAgents' => {
                                   'type' => 'Int'
                                 },
               'UnknownAgents' => {
                                    'type' => 'Int'
                                  },
               'ShutdownAgents' => {
                                     'type' => 'Int'
                                   }
             },
  'NameInRequest' => {
                       'BlackListedAgents' => 'blackListedAgents',
                       'TotalAgents' => 'totalAgents',
                       'HealthyAgents' => 'healthyAgents',
                       'UnhealthyAgents' => 'unhealthyAgents',
                       'ActiveAgents' => 'activeAgents',
                       'UnknownAgents' => 'unknownAgents',
                       'ShutdownAgents' => 'shutdownAgents'
                     },
  'IsRequired' => {
                    'BlackListedAgents' => 1,
                    'TotalAgents' => 1,
                    'HealthyAgents' => 1,
                    'UnhealthyAgents' => 1,
                    'ActiveAgents' => 1,
                    'UnknownAgents' => 1,
                    'ShutdownAgents' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::CustomerAgentInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::CustomerAgentInfo object:

  $service_obj->Method(Att1 => { ActiveAgents => $value, ..., UnknownAgents => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::CustomerAgentInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveAgents

=head1 DESCRIPTION

Inventory data for installed discovery agents.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActiveAgents => Int

  Number of active discovery agents.


=head2 B<REQUIRED> BlackListedAgents => Int

  Number of blacklisted discovery agents.


=head2 B<REQUIRED> HealthyAgents => Int

  Number of healthy discovery agents


=head2 B<REQUIRED> ShutdownAgents => Int

  Number of discovery agents with status SHUTDOWN.


=head2 B<REQUIRED> TotalAgents => Int

  Total number of discovery agents.


=head2 B<REQUIRED> UnhealthyAgents => Int

  Number of unhealthy discovery agents.


=head2 B<REQUIRED> UnknownAgents => Int

  Number of unknown discovery agents.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

