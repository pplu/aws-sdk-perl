# Generated from json/callresult_class.tt

package Paws::SimpleWorkflow::DomainDetail;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_DomainConfiguration SimpleWorkflow_DomainInfo/;
  has Configuration => (is => 'ro', isa => SimpleWorkflow_DomainConfiguration, required => 1);
  has DomainInfo => (is => 'ro', isa => SimpleWorkflow_DomainInfo, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DomainInfo' => {
                                 'class' => 'Paws::SimpleWorkflow::DomainInfo',
                                 'type' => 'SimpleWorkflow_DomainInfo'
                               },
               'Configuration' => {
                                    'class' => 'Paws::SimpleWorkflow::DomainConfiguration',
                                    'type' => 'SimpleWorkflow_DomainConfiguration'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DomainInfo' => 'domainInfo',
                       'Configuration' => 'configuration'
                     },
  'IsRequired' => {
                    'DomainInfo' => 1,
                    'Configuration' => 1
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