# Generated from json/callresult_class.tt

package Paws::SimpleWorkflow::DomainDetail;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_DomainInfo SimpleWorkflow_DomainConfiguration/;
  has Configuration => (is => 'ro', isa => SimpleWorkflow_DomainConfiguration, required => 1);
  has DomainInfo => (is => 'ro', isa => SimpleWorkflow_DomainInfo, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DomainInfo' => 'domainInfo',
                       'Configuration' => 'configuration'
                     },
  'IsRequired' => {
                    'DomainInfo' => 1,
                    'Configuration' => 1
                  },
  'types' => {
               'Configuration' => {
                                    'type' => 'SimpleWorkflow_DomainConfiguration',
                                    'class' => 'Paws::SimpleWorkflow::DomainConfiguration'
                                  },
               'DomainInfo' => {
                                 'class' => 'Paws::SimpleWorkflow::DomainInfo',
                                 'type' => 'SimpleWorkflow_DomainInfo'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DomainDetail

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => SimpleWorkflow_DomainConfiguration

The domain configuration. Currently, this includes only the domain's
retention period.


=head2 B<REQUIRED> DomainInfo => SimpleWorkflow_DomainInfo

The basic information about a domain, such as its name, status, and
description.


=head2 _request_id => Str


=cut

1;