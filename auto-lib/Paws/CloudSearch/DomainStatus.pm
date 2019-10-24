# Generated from default/object.tt
package Paws::CloudSearch::DomainStatus;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::CloudSearch::Types qw/CloudSearch_Limits CloudSearch_ServiceEndpoint/;
  has ARN => (is => 'ro', isa => Str);
  has Created => (is => 'ro', isa => Bool);
  has Deleted => (is => 'ro', isa => Bool);
  has DocService => (is => 'ro', isa => CloudSearch_ServiceEndpoint);
  has DomainId => (is => 'ro', isa => Str, required => 1);
  has DomainName => (is => 'ro', isa => Str, required => 1);
  has Limits => (is => 'ro', isa => CloudSearch_Limits);
  has Processing => (is => 'ro', isa => Bool);
  has RequiresIndexDocuments => (is => 'ro', isa => Bool, required => 1);
  has SearchInstanceCount => (is => 'ro', isa => Int);
  has SearchInstanceType => (is => 'ro', isa => Str);
  has SearchPartitionCount => (is => 'ro', isa => Int);
  has SearchService => (is => 'ro', isa => CloudSearch_ServiceEndpoint);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SearchInstanceCount' => {
                                          'type' => 'Int'
                                        },
               'Processing' => {
                                 'type' => 'Bool'
                               },
               'SearchService' => {
                                    'class' => 'Paws::CloudSearch::ServiceEndpoint',
                                    'type' => 'CloudSearch_ServiceEndpoint'
                                  },
               'RequiresIndexDocuments' => {
                                             'type' => 'Bool'
                                           },
               'SearchPartitionCount' => {
                                           'type' => 'Int'
                                         },
               'ARN' => {
                          'type' => 'Str'
                        },
               'Limits' => {
                             'class' => 'Paws::CloudSearch::Limits',
                             'type' => 'CloudSearch_Limits'
                           },
               'SearchInstanceType' => {
                                         'type' => 'Str'
                                       },
               'DocService' => {
                                 'class' => 'Paws::CloudSearch::ServiceEndpoint',
                                 'type' => 'CloudSearch_ServiceEndpoint'
                               },
               'Created' => {
                              'type' => 'Bool'
                            },
               'Deleted' => {
                              'type' => 'Bool'
                            },
               'DomainId' => {
                               'type' => 'Str'
                             },
               'DomainName' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'RequiresIndexDocuments' => 1,
                    'DomainId' => 1,
                    'DomainName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DomainStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearch::DomainStatus object:

  $service_obj->Method(Att1 => { ARN => $value, ..., SearchService => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearch::DomainStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ARN

=head1 DESCRIPTION

The current status of the search domain.

=head1 ATTRIBUTES


=head2 ARN => Str

  


=head2 Created => Bool

  True if the search domain is created. It can take several minutes to
initialize a domain when CreateDomain is called. Newly created search
domains are returned from DescribeDomains with a false value for
Created until domain creation is complete.


=head2 Deleted => Bool

  True if the search domain has been deleted. The system must clean up
resources dedicated to the search domain when DeleteDomain is called.
Newly deleted search domains are returned from DescribeDomains with a
true value for IsDeleted for several minutes until resource cleanup is
complete.


=head2 DocService => CloudSearch_ServiceEndpoint

  The service endpoint for updating documents in a search domain.


=head2 B<REQUIRED> DomainId => Str

  


=head2 B<REQUIRED> DomainName => Str

  


=head2 Limits => CloudSearch_Limits

  


=head2 Processing => Bool

  True if processing is being done to activate the current domain
configuration.


=head2 B<REQUIRED> RequiresIndexDocuments => Bool

  True if IndexDocuments needs to be called to activate the current
domain configuration.


=head2 SearchInstanceCount => Int

  The number of search instances that are available to process search
requests.


=head2 SearchInstanceType => Str

  The instance type that is being used to process search requests.


=head2 SearchPartitionCount => Int

  The number of partitions across which the search index is spread.


=head2 SearchService => CloudSearch_ServiceEndpoint

  The service endpoint for requesting search results from a search
domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

